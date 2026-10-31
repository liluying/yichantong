.class Lcom/qianhe/baselib/utils/NetworkChecker$1;
.super Ljava/lang/Object;
.source "NetworkChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/baselib/utils/NetworkChecker;->checkNetworkAsync(Landroid/content/Context;Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/qianhe/baselib/utils/NetworkChecker$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/qianhe/baselib/utils/NetworkChecker$1;->val$callback:Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/qianhe/baselib/utils/NetworkChecker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/NetworkChecker;->-$$Nest$smisInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/qianhe/baselib/utils/NetworkChecker$1;->val$callback:Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;

    invoke-interface {v1, v0}, Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;->onResult(Z)V

    return-void
.end method
