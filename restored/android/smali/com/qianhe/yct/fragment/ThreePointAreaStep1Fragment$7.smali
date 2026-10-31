.class Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;
.super Ljava/lang/Object;
.source "ThreePointAreaStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 167
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double p1, v1, v7

    if-nez p1, :cond_0

    cmpl-double p1, v3, v7

    if-nez p1, :cond_0

    cmpl-double p1, v5, v7

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_pointA:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;DDD)Z

    move-result p1

    if-nez p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->access$000(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;->edtDepth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->access$100(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;ID)D

    move-result-wide v0

    .line 176
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object p1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/DitchTypeDropdown;->getCurrentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    neg-double v0, v0

    :goto_0
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthA:D

    .line 177
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->access$200(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 178
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
