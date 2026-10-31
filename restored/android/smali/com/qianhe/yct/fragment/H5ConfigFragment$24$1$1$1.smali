.class Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1$1;
.super Ljava/lang/Object;
.source "H5ConfigFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1$1;->this$3:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1$1;->this$3:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;->this$2:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;->this$1:Lcom/qianhe/yct/fragment/H5ConfigFragment$24;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1$1;->this$3:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;->this$2:Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;->this$1:Lcom/qianhe/yct/fragment/H5ConfigFragment$24;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/AppConfigActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/AppConfigActivity;->restartApp()V

    :cond_0
    return-void
.end method
