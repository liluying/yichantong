.class public final synthetic Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/utils/BsPatchManager;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Ljava/util/concurrent/Future;

.field public final synthetic f$3:Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/utils/BsPatchManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/Future;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/utils/BsPatchManager;

    iput-object p2, p0, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/Future;

    iput-object p4, p0, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;->f$3:Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/utils/BsPatchManager;

    iget-object v1, p0, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/Future;

    iget-object v3, p0, Lcom/qianhe/yct/utils/BsPatchManager$$ExternalSyntheticLambda1;->f$3:Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/utils/BsPatchManager;->$r8$lambda$N1V5-s6rYlaOtnoGjWD0kldZLWs(Lcom/qianhe/yct/utils/BsPatchManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/Future;Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;)V

    return-void
.end method
