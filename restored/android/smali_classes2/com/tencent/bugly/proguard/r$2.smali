.class final Lcom/tencent/bugly/proguard/r$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/r;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/bugly/proguard/r;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/r;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/tencent/bugly/proguard/r$2;->b:Lcom/tencent/bugly/proguard/r;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/r$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$2;->b:Lcom/tencent/bugly/proguard/r;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/r$2;->a:Z

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 479
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
