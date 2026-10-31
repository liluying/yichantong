.class Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$1;
.super Ljava/lang/Object;
.source "VerifyAccuracyActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$1;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 311
    const-string v0, "bucket_fine_tune_tips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$1;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$mstartBucketFineTuneActivity(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    :cond_0
    return-void
.end method
