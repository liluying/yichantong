.class Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;
.super Ljava/lang/Object;
.source "WaGouStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 244
    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    .line 245
    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    .line 246
    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v4, v10

    if-nez v2, :cond_0

    cmpl-double v2, v6, v10

    if-nez v2, :cond_0

    cmpl-double v2, v8, v10

    if-nez v2, :cond_0

    .line 248
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_direction_point:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;DDD)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 250
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v2

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v2

    iget-wide v12, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    new-array v2, v0, [D

    aput-wide v8, v2, p1

    aput-wide v12, v2, v1

    new-array v0, v0, [D

    aput-wide v4, v0, p1

    aput-wide v6, v0, v1

    invoke-static {v2, v0}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double p1, v6, v4

    if-lez p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->AB_must_greater_than_10cm:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 255
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$mapplyDefaultSelBIfValueEmpty(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    .line 256
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v0, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    cmpl-double p1, v4, v10

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    if-ne p1, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    add-double/2addr v4, v6

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v8, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    add-double/2addr v6, v8

    cmpl-double p1, v4, v6

    if-ltz p1, :cond_4

    .line 257
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->pointB_must_lower_pointA:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 258
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v0, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    cmpl-double p1, v4, v10

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    if-ne p1, v1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    add-double/2addr v0, v4

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    add-double/2addr v4, v6

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_6

    .line 259
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->pointB_must_higher_pointA:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 260
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v0, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    cmpl-double p1, v0, v10

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    cmpl-double p1, v0, v10

    if-nez p1, :cond_7

    .line 261
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_select_benchmark:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 263
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->lltValue:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 264
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iput-wide v10, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    .line 266
    :cond_8
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    .line 267
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
