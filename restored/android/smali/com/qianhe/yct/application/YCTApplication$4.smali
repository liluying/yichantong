.class Lcom/qianhe/yct/application/YCTApplication$4;
.super Ljava/lang/Object;
.source "YCTApplication.java"

# interfaces
.implements Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/application/YCTApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/application/YCTApplication;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/application/YCTApplication;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication$4;->this$0:Lcom/qianhe/yct/application/YCTApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoreInitFinished()V
    .locals 1

    .line 176
    const-string/jumbo v0, "\u5185\u6838\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onViewInitFinished(Z)V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X5\u5185\u6838\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "\u5931\u8d25\uff0c\u4f7f\u7528\u7cfb\u7edf\u5185\u6838\u3002"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
