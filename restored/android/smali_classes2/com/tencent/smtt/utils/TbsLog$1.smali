.class final Lcom/tencent/smtt/utils/TbsLog$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->a()Lcom/tencent/smtt/utils/TbsLogClient;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->a()Lcom/tencent/smtt/utils/TbsLogClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/utils/TbsLogClient;->writeLogToDisk()V

    return-void

    :cond_0
    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
