.class public final synthetic Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/baselib/utils/LogToFile$DecryptProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;JLcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;

    iput-wide p2, p0, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;->f$2:Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;

    iput-wide p5, p0, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;->f$3:J

    return-void
.end method


# virtual methods
.method public final onProgress(JJ)V
    .locals 10

    .line 0
    iget-object v0, p0, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;

    iget-wide v1, p0, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;->f$2:Lcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;

    iget-wide v4, p0, Lcom/qianhe/baselib/utils/ZipUtil$$ExternalSyntheticLambda0;->f$3:J

    move-wide v6, p1

    move-wide v8, p3

    invoke-static/range {v0 .. v9}, Lcom/qianhe/baselib/utils/ZipUtil;->$r8$lambda$bHHq7rXZjYq8U8w2XGDB24K9v4U(Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;JLcom/qianhe/baselib/utils/ZipUtil$ProgressTracker;JJJ)V

    return-void
.end method
