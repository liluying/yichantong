.class Lcom/qianhe/yct/fragment/LineStep3Fragment$11;
.super Ljava/lang/Object;
.source "LineStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method public static synthetic $r8$lambda$XT_uKMIbtnzcrbJHEH7G958hkCk(Lcom/qianhe/yct/fragment/LineStep3Fragment$11;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    .line 217
    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p0

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->ivToggle:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 214
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->lltParallelLine:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    new-instance v0, Lcom/qianhe/yct/fragment/LineStep3Fragment$11$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$11$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment$11;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
