.class Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;
.super Ljava/lang/Object;
.source "ShuaPoStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 214
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double p1, v1, v7

    if-nez p1, :cond_0

    cmpl-double p1, v3, v7

    if-nez p1, :cond_0

    cmpl-double p1, v5, v7

    if-nez p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_start_point:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;DDD)Z

    move-result p1

    if-nez p1, :cond_1

    .line 219
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 221
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
