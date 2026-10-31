.class Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;
.super Ljava/lang/Object;
.source "PolyLineStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->-$$Nest$fgetcurrentSlopeMode(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->-$$Nest$misRatioInputEmpty(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_set_slope_ratio:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-nez p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_enter_width:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->-$$Nest$mapplyParamsToEntity(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
