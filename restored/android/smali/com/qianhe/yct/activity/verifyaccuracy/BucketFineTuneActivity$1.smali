.class Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;
.super Ljava/lang/Object;
.source "BucketFineTuneActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 231
    const-string v0, "bucket_fine_tune_completed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 233
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 234
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const-class v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetcurrentExcavator(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p2

    const-string v0, "currentExcavator"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 236
    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetmVerifyMode(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)I

    move-result p2

    if-ltz p2, :cond_1

    .line 237
    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetmVerifyMode(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)I

    move-result p2

    const-string/jumbo v0, "verifyModeValue"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
