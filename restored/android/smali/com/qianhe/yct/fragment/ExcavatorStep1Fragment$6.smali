.class Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;
.super Ljava/lang/Object;
.source "ExcavatorStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 238
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$mshouldBlockForCheckIns(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$mshowCheckInsDialog(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V

    return-void

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-ne p1, v0, :cond_4

    .line 243
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    cmpl-double p1, v8, v5

    if-nez p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 245
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$200(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)I

    move-result v0

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {v5}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object v5

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    invoke-static {p1, v0, v5, v6}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$300(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;ID)D

    move-result-wide v5

    cmpg-double p1, v5, v3

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$400(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)I

    move-result v0

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-static {p1, v0, v3, v4}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$500(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;ID)D

    move-result-wide v3

    cmpl-double p1, v3, v1

    if-lez p1, :cond_2

    goto :goto_0

    .line 248
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    .line 249
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvContinue:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$600(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/view/View;)V

    return-void

    .line 246
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 252
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$700(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)I

    move-result v0

    iget-object v8, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {v8}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object v8

    iget-object v8, v8, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v8}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    invoke-static {p1, v0, v8, v9}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$800(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;ID)D

    move-result-wide v8

    .line 253
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$900(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)I

    move-result v0

    iget-object v10, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {v10}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object v10

    iget-object v10, v10, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v10}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v10

    invoke-static {p1, v0, v10, v11}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$1000(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;ID)D

    move-result-wide v10

    .line 254
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v12

    cmpl-double p1, v12, v5

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v12

    cmpl-double p1, v12, v5

    if-nez p1, :cond_5

    goto/16 :goto_3

    .line 256
    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double p1, v5, v3

    if-ltz p1, :cond_9

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double p1, v5, v1

    if-lez p1, :cond_6

    goto :goto_2

    .line 258
    :cond_6
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double p1, v5, v3

    if-ltz p1, :cond_8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double p1, v3, v1

    if-lez p1, :cond_7

    goto :goto_1

    .line 261
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-wide v8, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 262
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-wide v10, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 263
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvContinue:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$1100(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/view/View;)V

    return-void

    .line 259
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 257
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 255
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
