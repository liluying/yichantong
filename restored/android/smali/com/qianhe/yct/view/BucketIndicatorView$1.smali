.class Lcom/qianhe/yct/view/BucketIndicatorView$1;
.super Ljava/lang/Object;
.source "BucketIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/BucketIndicatorView;->scheduleResetOffset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/BucketIndicatorView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/BucketIndicatorView;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView$1;->this$0:Lcom/qianhe/yct/view/BucketIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView$1;->this$0:Lcom/qianhe/yct/view/BucketIndicatorView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BucketIndicatorView;->-$$Nest$mresetIconPosition(Lcom/qianhe/yct/view/BucketIndicatorView;)V

    .line 335
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView$1;->this$0:Lcom/qianhe/yct/view/BucketIndicatorView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BucketIndicatorView;->-$$Nest$fgetmResetOffsetScheduled(Lcom/qianhe/yct/view/BucketIndicatorView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
