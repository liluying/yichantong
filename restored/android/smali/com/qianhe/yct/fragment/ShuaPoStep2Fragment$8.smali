.class Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;
.super Ljava/lang/Object;
.source "ShuaPoStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 219
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    .line 220
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    .line 221
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmpl-double v10, v4, v2

    if-nez v10, :cond_0

    cmpl-double v10, v6, v2

    if-nez v10, :cond_0

    cmpl-double v10, v8, v2

    if-nez v10, :cond_0

    .line 223
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_direction_point:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v2

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    iget-object v10, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v10}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v10

    iget-wide v10, v10, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    new-array v12, v1, [D

    aput-wide v2, v12, v0

    aput-wide v10, v12, p1

    new-array v1, v1, [D

    aput-wide v4, v1, v0

    aput-wide v6, v1, p1

    invoke-static {v12, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double p1, v2, v0

    if-lez p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->AB_must_greater_than_10cm:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;DDD)V

    return-void
.end method
