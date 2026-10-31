.class Lcom/qianhe/yct/fragment/LineStep2Fragment$7;
.super Ljava/lang/Object;
.source "LineStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/LineStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep2Fragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 185
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    .line 186
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    .line 187
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmpl-double v10, v4, v2

    if-nez v10, :cond_0

    cmpl-double v10, v6, v2

    if-nez v10, :cond_0

    cmpl-double v10, v8, v2

    if-nez v10, :cond_0

    .line 189
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_direction_point:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/LineStep2Fragment;DDD)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 191
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v2

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v2

    iget-wide v10, v2, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    new-array v2, v1, [D

    aput-wide v8, v2, v0

    aput-wide v10, v2, p1

    new-array v1, v1, [D

    aput-wide v4, v1, v0

    aput-wide v6, v1, p1

    invoke-static {v2, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double p1, v4, v0

    if-lez p1, :cond_2

    .line 193
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->AB_must_greater_than_10cm:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 195
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
