.class Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;
.super Ljava/lang/Object;
.source "OnePointAreaStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 146
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 147
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 148
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    .line 149
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    const/4 p1, 0x0

    const-wide/16 v9, 0x0

    cmpl-double v0, v7, v9

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    cmpl-double v0, v7, v9

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    cmpl-double v0, v7, v9

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_collect_coordinates:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;DDD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->access$000(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtDepth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->access$100(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;ID)D

    move-result-wide v0

    .line 155
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object p1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/DitchTypeDropdown;->getCurrentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    neg-double v0, v0

    :goto_0
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->depth:D

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->-$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->access$200(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
