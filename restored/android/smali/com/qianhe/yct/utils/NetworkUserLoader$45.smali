.class Lcom/qianhe/yct/utils/NetworkUserLoader$45;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->wrapCalibResponseLog(Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$api:Ljava/lang/String;

.field final synthetic val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3734
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$45;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$45;->val$api:Ljava/lang/String;

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$45;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 3

    .line 3737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6821\u51c6\u6570\u636e\u5305 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$45;->val$api:Ljava/lang/String;

    const-string v2, "1001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u7533\u8bf7\u4e0a\u4f20"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$45;->val$api:Ljava/lang/String;

    const-string v2, "1003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\u901a\u77e5\u7ed3\u679c"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3738
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$45;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_2

    .line 3739
    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 3745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6821\u51c6\u6570\u636e\u5305 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$45;->val$api:Ljava/lang/String;

    const-string v2, "1001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u7533\u8bf7\u4e0a\u4f20"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$45;->val$api:Ljava/lang/String;

    const-string v2, "1003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\u901a\u77e5\u7ed3\u679c"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u54cd\u5e94\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3746
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$45;->val$listener:Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    if-eqz v0, :cond_2

    .line 3747
    invoke-interface {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onResponse(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
