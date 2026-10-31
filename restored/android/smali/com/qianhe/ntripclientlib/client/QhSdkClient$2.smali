.class Lcom/qianhe/ntripclientlib/client/QhSdkClient$2;
.super Ljava/lang/Object;
.source "QhSdkClient.java"

# interfaces
.implements Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/ntripclientlib/client/QhSdkClient;->judgeNetwork(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;


# direct methods
.method constructor <init>(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 114
    const-string/jumbo p1, "\u7f51\u7edc\u6b63\u5e38"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {p1}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetreconnect_period(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {p1, v2, v3}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fputreconnect_period(Lcom/qianhe/ntripclientlib/client/QhSdkClient;J)V

    return-void

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {p1}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetreconnect_period(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {p1, v2, v3}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fputreconnect_period(Lcom/qianhe/ntripclientlib/client/QhSdkClient;J)V

    .line 119
    const-string/jumbo p1, "\u7f51\u7edc\u4e0d\u53ef\u7528\uff0cntrip\u68c0\u6d4b\u95f4\u9694\u8c03\u6574\u4e3a10\u79d2"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
