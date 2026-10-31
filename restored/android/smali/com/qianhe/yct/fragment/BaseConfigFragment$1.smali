.class Lcom/qianhe/yct/fragment/BaseConfigFragment$1;
.super Ljava/lang/Object;
.source "BaseConfigFragment.java"

# interfaces
.implements Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BaseConfigFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BaseConfigFragment;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardHidden()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHeightCutoffAngle:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 39
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 40
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHost:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 41
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 42
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/BaseConfigFragment$1$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BaseConfigFragment$1$1;-><init>(Lcom/qianhe/yct/fragment/BaseConfigFragment$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onKeyboardShown()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/AppConfigActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qianhe/yct/activity/AppConfigActivity;->keyboardShown:Z

    :cond_0
    return-void
.end method
