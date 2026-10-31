.class Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;
.super Ljava/lang/Object;
.source "ChooseSensorDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private countTime:J

.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)V
    .locals 2

    .line 210
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 211
    iput-wide v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->countTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 216
    iget-wide v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->countTime:J

    const-wide/16 v2, 0x3

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 217
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvStatus:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5$1;-><init>(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 231
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->countTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->countTime:J

    return-void
.end method
