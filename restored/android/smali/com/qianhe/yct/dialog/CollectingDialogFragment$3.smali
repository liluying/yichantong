.class Lcom/qianhe/yct/dialog/CollectingDialogFragment$3;
.super Ljava/lang/Object;
.source "CollectingDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/CollectingDialogFragment;->startCollectTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:J

.field final synthetic this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)V
    .locals 2

    .line 119
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->-$$Nest$fgetcountDownSeconds(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$3;->count:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/CollectingDialogFragment$3$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment$3$1;-><init>(Lcom/qianhe/yct/dialog/CollectingDialogFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
