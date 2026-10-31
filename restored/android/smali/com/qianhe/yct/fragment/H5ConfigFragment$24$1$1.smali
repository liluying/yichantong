.class Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;
.super Ljava/lang/Object;
.source "H5ConfigFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;->this$2:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;->this$2:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;->this$1:Lcom/qianhe/yct/fragment/H5ConfigFragment$24;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;->this$2:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;->this$1:Lcom/qianhe/yct/fragment/H5ConfigFragment$24;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->restarting:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->access$3300(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;->this$2:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;->this$1:Lcom/qianhe/yct/fragment/H5ConfigFragment$24;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvReset:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1$1;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
