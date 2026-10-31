.class Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;
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

    .line 70
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType2:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvTypeDes2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType2:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType1:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 77
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvTypeDes1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    return-void

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    return-void
.end method
