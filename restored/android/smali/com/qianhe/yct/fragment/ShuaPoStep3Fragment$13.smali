.class Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;
.super Ljava/lang/Object;
.source "ShuaPoStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;


# direct methods
.method public static synthetic $r8$lambda$8zPvZBiHYqUrKhg5rVOCV048n70(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    .line 286
    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object p0

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method constructor <init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v3, 0x2

    .line 264
    iget-object v4, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    .line 265
    iget-object v4, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    .line 266
    iget-object v4, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v4, v6, v12

    if-nez v4, :cond_0

    cmpl-double v4, v8, v12

    if-nez v4, :cond_0

    cmpl-double v4, v10, v12

    if-nez v4, :cond_0

    .line 268
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->please_collect_start_point:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 269
    :cond_0
    iget-object v5, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static/range {v5 .. v11}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;DDD)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 270
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 271
    :cond_1
    iget-object v4, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v4

    iget-wide v14, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    iget-object v4, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v4

    const/16 p1, 0x1

    const/16 v16, 0x0

    iget-wide v1, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    new-array v4, v3, [D

    aput-wide v14, v4, v16

    aput-wide v1, v4, p1

    new-array v1, v3, [D

    aput-wide v6, v1, v16

    aput-wide v8, v1, p1

    invoke-static {v4, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v1

    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v14, v1

    if-gtz v4, :cond_a

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    iget-object v4, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v4

    move-wide/from16 v17, v12

    iget-wide v12, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    new-array v4, v3, [D

    aput-wide v1, v4, v16

    aput-wide v12, v4, p1

    new-array v1, v3, [D

    aput-wide v6, v1, v16

    aput-wide v8, v1, p1

    invoke-static {v4, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v1

    cmpl-double v3, v14, v1

    if-lez v3, :cond_2

    goto/16 :goto_0

    .line 273
    :cond_2
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    cmpl-double v1, v10, v3

    if-ltz v1, :cond_3

    .line 274
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->pointC_must_below_pointAB:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 275
    :cond_3
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v3, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpg-double v1, v10, v3

    if-gtz v1, :cond_4

    .line 276
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->point_C_must_higher_pointAB:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 277
    :cond_4
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$misPointCComplete(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    cmpl-double v1, v3, v17

    if-nez v1, :cond_6

    .line 278
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 279
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->please_input_slope_ratio_down:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 281
    :cond_5
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->please_input_slope_ratio_up:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 283
    :cond_6
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivSelNoWidth:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    cmpl-double v3, v1, v17

    if-nez v3, :cond_7

    .line 284
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->please_enter_slope_params:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 285
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    new-instance v2, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 289
    :cond_7
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$msyncSlopeParamsFromView(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    .line 290
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    .line 291
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_8

    .line 292
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 293
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    return-void

    .line 295
    :cond_8
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/baselib/bean/ShuaPoEntity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 297
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 298
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 300
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 302
    :cond_9
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    return-void

    .line 272
    :cond_a
    :goto_0
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->pointC_and_pointAB_must_greater_than_10cm:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
