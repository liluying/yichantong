.class Lcom/qianhe/yct/fragment/BaseConfigFragment$1$1;
.super Ljava/lang/Object;
.source "BaseConfigFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->onKeyboardHidden()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/BaseConfigFragment$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BaseConfigFragment$1;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseConfigFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseConfigFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseConfigFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/AppConfigActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qianhe/yct/activity/AppConfigActivity;->keyboardShown:Z

    :cond_0
    return-void
.end method
