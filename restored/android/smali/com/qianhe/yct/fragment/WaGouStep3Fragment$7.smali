.class Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;
.super Ljava/lang/Object;
.source "WaGouStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;


# direct methods
.method public static synthetic $r8$lambda$fwm0qerGV-9I9PWdofDwIxOs8_w(Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    .line 216
    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p0

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method constructor <init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 209
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvanced:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 211
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 212
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$mensureAdvancedTypeSelected(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$mrefresStepImage(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    new-instance v0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
