.class Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;
.super Ljava/lang/Object;
.source "ExcavatorStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 28

    move-object/from16 v0, p0

    .line 183
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$misComboCreateBucketFlow(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$monComboContinue(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    return-void

    .line 188
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->shovel_name_cannot_empty:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->use_default_values:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "step2_shovel_name"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 192
    :cond_1
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    if-eq v1, v3, :cond_2

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    .line 193
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->containsUnderscore(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->name_cannot_contain_underscore:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 198
    :cond_2
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    if-eq v1, v3, :cond_3

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$misShovelNameDuplicate(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->name_exists:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 202
    :cond_3
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    const-wide/16 v7, 0x0

    if-ne v1, v2, :cond_7

    .line 203
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    cmpl-double v3, v1, v7

    if-nez v3, :cond_4

    .line 204
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 205
    :cond_4
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$000(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I

    move-result v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$100(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D

    move-result-wide v1

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v1, v7

    if-ltz v3, :cond_6

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$200(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I

    move-result v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$300(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D

    move-result-wide v1

    cmpl-double v3, v1, v5

    if-lez v3, :cond_5

    goto :goto_0

    .line 208
    :cond_5
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    .line 209
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvContinue:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$400(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/view/View;)V

    return-void

    .line 206
    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 212
    :cond_7
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$500(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I

    move-result v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    invoke-static {v1, v2, v9, v10}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$600(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D

    move-result-wide v1

    .line 213
    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$700(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I

    move-result v9

    iget-object v10, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v10}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v10

    iget-object v10, v10, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v10}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v10

    invoke-static {v3, v9, v10, v11}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$800(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D

    move-result-wide v9

    .line 214
    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$900(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I

    move-result v11

    iget-object v12, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v12}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v12

    iget-object v12, v12, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v12}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v12

    invoke-static {v3, v11, v12, v13}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$1000(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D

    move-result-wide v11

    .line 215
    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$1100(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I

    move-result v13

    iget-object v14, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v14}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v14

    iget-object v14, v14, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v14}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v14

    invoke-static {v3, v13, v14, v15}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$1200(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D

    move-result-wide v13

    .line 216
    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$1300(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I

    move-result v15

    move-wide/from16 v16, v5

    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v5}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v5

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    invoke-static {v3, v15, v5, v6}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$1400(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D

    move-result-wide v5

    cmpl-double v3, v1, v7

    if-eqz v3, :cond_14

    cmpl-double v3, v9, v7

    if-eqz v3, :cond_14

    cmpl-double v3, v11, v7

    if-eqz v3, :cond_14

    cmpl-double v3, v13, v7

    if-eqz v3, :cond_14

    cmpl-double v3, v5, v7

    if-nez v3, :cond_8

    goto/16 :goto_6

    .line 219
    :cond_8
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v18, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v7, v18

    if-ltz v3, :cond_13

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v3, v7, v16

    if-lez v3, :cond_9

    goto/16 :goto_5

    .line 221
    :cond_9
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v3, v7, v18

    if-ltz v3, :cond_12

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v3, v7, v16

    if-lez v3, :cond_a

    goto/16 :goto_4

    .line 223
    :cond_a
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v3, v7, v18

    if-ltz v3, :cond_11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v3, v7, v16

    if-lez v3, :cond_b

    goto/16 :goto_3

    .line 225
    :cond_b
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v3, v7, v18

    if-ltz v3, :cond_10

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v3, v7, v16

    if-lez v3, :cond_c

    goto/16 :goto_2

    .line 227
    :cond_c
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v3, v7, v18

    if-ltz v3, :cond_f

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v3, v7, v16

    if-lez v3, :cond_d

    goto/16 :goto_1

    .line 230
    :cond_d
    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v15

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    div-double v16, v1, v3

    mul-double v9, v9, v3

    div-double v18, v9, v3

    mul-double v11, v11, v3

    div-double v20, v11, v3

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v1

    mul-double v13, v13, v3

    div-double v22, v13, v3

    mul-double v5, v5, v3

    div-double v26, v5, v3

    move-wide/from16 v24, v22

    invoke-virtual/range {v15 .. v27}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureValues(DDDDDD)V

    .line 231
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$misExistingBucket(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 232
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 233
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v1

    .line 234
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v3

    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetmGGA(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v4

    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v5}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordReuseBucketInput(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 236
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvContinue:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$1500(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/view/View;)V

    return-void

    .line 238
    :cond_e
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$mgenerateToolParamLocally(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    return-void

    .line 228
    :cond_f
    :goto_1
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 226
    :cond_10
    :goto_2
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 224
    :cond_11
    :goto_3
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 222
    :cond_12
    :goto_4
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 220
    :cond_13
    :goto_5
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 218
    :cond_14
    :goto_6
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
