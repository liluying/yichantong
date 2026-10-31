.class Lcom/qianhe/yct/fragment/BucketCreateFragment$1;
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

    .line 167
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 170
    const-string v0, "fine_tune_point_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "confirm"

    .line 171
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    const-string v0, "fineTunePointModeValue"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fputpendingFineTunePointMode(Lcom/qianhe/yct/fragment/BucketCreateFragment;I)V

    .line 176
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$mshowFineTuneTips(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
