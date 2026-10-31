.class Lcom/qianhe/yct/fragment/BucketCreateFragment$7;
.super Ljava/lang/Object;
.source "BucketCreateFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BucketCreateFragment;->showNotSupportReplaceBucketDialog()V
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

    .line 1247
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$7;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 1255
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$7;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$msaveBucketWithoutApplyAfterUnsupported(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$7;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$msaveBucketWithoutApplyAfterUnsupported(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    return-void
.end method
