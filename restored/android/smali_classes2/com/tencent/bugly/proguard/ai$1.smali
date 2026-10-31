.class final Lcom/tencent/bugly/proguard/ai$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ai;->a(ILjava/util/concurrent/LinkedBlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/tencent/bugly/proguard/ai;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ai;Ljava/lang/Runnable;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ai$1;->b:Lcom/tencent/bugly/proguard/ai;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ai$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ai$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 500
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ai$1;->b:Lcom/tencent/bugly/proguard/ai;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ai;->a(Lcom/tencent/bugly/proguard/ai;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ai$1;->b:Lcom/tencent/bugly/proguard/ai;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ai;->b(Lcom/tencent/bugly/proguard/ai;)I

    .line 503
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
