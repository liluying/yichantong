.class Lcom/qianhe/yct/fragment/BucketCreateFragment$2;
.super Ljava/lang/Object;
.source "BucketCreateFragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BucketCreateFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 182
    const-string v0, "bucket_fine_tune_tips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetpendingFineTunePointMode(Lcom/qianhe/yct/fragment/BucketCreateFragment;)I

    move-result p1

    if-nez p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$mjumpOneClickFineTune(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    return-void

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$mjumpStepByStepFineTune(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    :cond_1
    return-void
.end method
