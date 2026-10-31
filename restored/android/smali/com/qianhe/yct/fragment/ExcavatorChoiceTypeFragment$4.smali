.class Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$4;
.super Ljava/lang/Object;
.source "ExcavatorChoiceTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType1:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType2:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    sget v1, Lcom/qianhe/yct/R$string;->select_measurement_method:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->access$000(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;Landroid/view/View;)V

    return-void
.end method
