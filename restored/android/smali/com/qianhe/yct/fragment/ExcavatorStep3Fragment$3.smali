.class Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;
.super Ljava/lang/Object;
.source "ExcavatorStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 120
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-ne p1, v0, :cond_3

    .line 121
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    cmpl-double p1, v6, v3

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->access$000(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)I

    move-result v0

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-static {p1, v0, v3, v4}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->access$100(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;ID)D

    move-result-wide v3

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p1, v3, v6

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->access$200(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)I

    move-result v0

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-static {p1, v0, v3, v4}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->access$300(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;ID)D

    move-result-wide v3

    cmpl-double p1, v3, v1

    if-lez p1, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    .line 127
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvContinue:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->access$400(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Landroid/view/View;)V

    return-void

    .line 124
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->access$500(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)I

    move-result v0

    iget-object v6, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {v6}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object v6

    iget-object v6, v6, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->edtAy:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v6}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    invoke-static {p1, v0, v6, v7}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->access$600(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;ID)D

    move-result-wide v6

    cmpl-double p1, v6, v3

    if-nez p1, :cond_4

    .line 132
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 133
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p1, v3, v8

    if-ltz p1, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double p1, v3, v1

    if-lez p1, :cond_5

    goto :goto_1

    .line 136
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-wide v6, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvContinue:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->access$700(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Landroid/view/View;)V

    return-void

    .line 134
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
