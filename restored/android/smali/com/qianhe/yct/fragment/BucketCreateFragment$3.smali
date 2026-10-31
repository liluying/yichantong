.class Lcom/qianhe/yct/fragment/BucketCreateFragment$3;
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

    .line 191
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$3;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 194
    const-string v0, "create_bucket_apply"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$3;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$mstartApplyBucketSwitch(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    return-void

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$3;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$3;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$3;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
