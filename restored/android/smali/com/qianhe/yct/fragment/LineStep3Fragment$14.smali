.class Lcom/qianhe/yct/fragment/LineStep3Fragment$14;
.super Ljava/lang/Object;
.source "LineStep3Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/LineStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$14;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardHidden()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$14;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$mcommitFocusedInput(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$14;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$14;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$14;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$14;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$14;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public onKeyboardShown()V
    .locals 0

    .line 0
    return-void
.end method
