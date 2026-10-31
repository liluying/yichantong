.class Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;
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
.method constructor <init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 153
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$mcommitFocusedInput(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    .line 154
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$msyncDepthBFromSlopeRatio(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$mgetLengthMeter(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)D

    move-result-wide v0

    .line 157
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_width:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    :cond_0
    cmpl-double p1, v0, v4

    if-nez p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_length:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v0, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltRatio:Landroid/widget/LinearLayout;

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    .line 166
    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double p1, v0, v4

    if-nez p1, :cond_2

    .line 167
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_slope_ratio_of_ditch:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 170
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$misBottomWidthMode(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 171
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    cmpl-double p1, v6, v4

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    cmpl-double p1, v6, v4

    if-nez p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_bottom_width:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 175
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1, v2, v3}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$misBottomWidthExceedsDitchWidth(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;D)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 176
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->bottom_width_exceeds_ditch_width:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 179
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftSlope:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    cmpl-double p1, v6, v4

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightSlope:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    cmpl-double p1, v6, v4

    if-nez p1, :cond_5

    .line 180
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_complete_slope:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1, v2, v3}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$mgetSlopeBottomExceedsCenterlineMessage(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;D)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 185
    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 190
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    .line 191
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_7

    .line 192
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 193
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    return-void

    .line 195
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/WaGouEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 197
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 198
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 199
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 201
    :cond_8
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    return-void
.end method
