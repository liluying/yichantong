.class final Lcom/tencent/bugly/proguard/aq$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/aq;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/bugly/proguard/aq;

.field final synthetic b:Lcom/tencent/bugly/proguard/aq;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/aq;Lcom/tencent/bugly/proguard/aq;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aq$1;->b:Lcom/tencent/bugly/proguard/aq;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/aq$1;->a:Lcom/tencent/bugly/proguard/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 77
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->b()Lcom/tencent/bugly/proguard/aq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Register broadcast receiver of Bugly."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aq$1;->a:Lcom/tencent/bugly/proguard/aq;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq$1;->b:Lcom/tencent/bugly/proguard/aq;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/aq;->b(Lcom/tencent/bugly/proguard/aq;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->b()Lcom/tencent/bugly/proguard/aq;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aq$1;->b:Lcom/tencent/bugly/proguard/aq;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/aq;->a(Lcom/tencent/bugly/proguard/aq;)Landroid/content/IntentFilter;

    move-result-object v3

    const-string v4, "com.tencent.bugly.BuglyBroadcastReceiver.permission"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
