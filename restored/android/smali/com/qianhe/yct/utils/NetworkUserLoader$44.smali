.class Lcom/qianhe/yct/utils/NetworkUserLoader$44;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->notifyUploadLogFileState(Ljava/io/File;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

.field final synthetic val$uploadState:I

.field final synthetic val$zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3650
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$zipFile:Ljava/io/File;

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    iput p4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$uploadState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 3653
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetlogUploadCancelled(Lcom/qianhe/yct/utils/NetworkUserLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3656
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure() \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3657
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$zipFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3658
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mendLogUploadSession(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    .line 3659
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_2

    .line 3660
    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5

    .line 3667
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetlogUploadCancelled(Lcom/qianhe/yct/utils/NetworkUserLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 3671
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3672
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3673
    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$zipFile:Ljava/io/File;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$zipFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 3674
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mendLogUploadSession(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    if-nez v2, :cond_6

    .line 3676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u65e5\u5fd7\u4e0a\u4f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$uploadState:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "\u6210\u529f"

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "\u5931\u8d25"

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "\u4e0d\u5b58\u5728"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u901a\u77e5\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3677
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v1, :cond_8

    .line 3678
    iget v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$uploadState:I

    if-ne v2, v4, :cond_4

    .line 3679
    invoke-interface {v1, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onResponse(Ljava/lang/String;)V

    return-void

    :cond_4
    if-ne v2, v3, :cond_5

    .line 3681
    const-string/jumbo p1, "\u4e0a\u4f20\u5931\u8d25"

    goto :goto_2

    :cond_5
    const-string/jumbo p1, "\u65e5\u5fd7\u4e0d\u5b58\u5728"

    :goto_2
    invoke-interface {v1, v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    return-void

    .line 3686
    :cond_6
    const-string p1, "err_msg"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e0a\u4f20\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3688
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v1, :cond_8

    .line 3689
    invoke-interface {v1, v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3694
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6570\u636e\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3695
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$zipFile:Ljava/io/File;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$zipFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3696
    :cond_7
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mendLogUploadSession(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    .line 3697
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$44;->val$onRequestCallBackListener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v1, :cond_8

    .line 3698
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method
