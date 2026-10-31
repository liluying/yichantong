.class Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;
.super Ljava/lang/Object;
.source "DikeStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DikeStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 236
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 237
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 238
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double p1, v1, v7

    if-nez p1, :cond_0

    cmpl-double p1, v3, v7

    if-nez p1, :cond_0

    cmpl-double p1, v5, v7

    if-nez p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_start_point:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/DikeStep1Fragment;DDD)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 242
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double p1, v1, v7

    if-nez p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_choose_reference_A:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 246
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    .line 247
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
