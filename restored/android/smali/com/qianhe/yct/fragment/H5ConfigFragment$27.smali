.class Lcom/qianhe/yct/fragment/H5ConfigFragment$27;
.super Ljava/lang/Object;
.source "H5ConfigFragment.java"

# interfaces
.implements Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/H5ConfigFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardHidden()V
    .locals 4

    .line 665
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtDop:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 666
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtGst:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 667
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtSnr:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 668
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtSav:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 669
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtSau:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 670
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtRefstation:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 671
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtIns:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 672
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtGGa:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 673
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtBestpos:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 674
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtWorktolerance:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 675
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtWorktolerance:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 676
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtVRMS:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 677
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtHRMS:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 678
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$27$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$27$1;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment$27;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onKeyboardShown()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/AppConfigActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qianhe/yct/activity/AppConfigActivity;->keyboardShown:Z

    :cond_0
    return-void
.end method
