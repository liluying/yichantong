.class Lcom/qianhe/yct/fragment/LineStep3Fragment$13;
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
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 231
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_length_of_line:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtRightItems:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double p1, v0, v4

    if-gtz p1, :cond_6

    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLeftItems:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double p1, v0, v4

    if-lez p1, :cond_1

    goto/16 :goto_1

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_2

    .line 236
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_parallel_lines_interval:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 237
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$mgetDisplayUnit(Lcom/qianhe/yct/fragment/LineStep3Fragment;)I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    invoke-static {p1, v0, v4, v5}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->access$100(Lcom/qianhe/yct/fragment/LineStep3Fragment;ID)D

    move-result-wide v0

    const-wide v4, 0x40b3880000000000L    # 5000.0

    cmpl-double p1, v0, v4

    if-lez p1, :cond_3

    .line 238
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->interval_exceeds_limit:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 240
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtRightItems:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLeftItems:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_4

    goto :goto_0

    .line 244
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_generated_quantity:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 241
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    .line 242
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 234
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->items_exceeded_limit:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method
